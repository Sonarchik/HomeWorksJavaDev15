package com.example.spingmvc.service;

import com.example.spingmvc.entity.Note;
import com.example.spingmvc.repository.NoteRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;

@RequiredArgsConstructor
@Service
public class NoteService {
    private final NoteRepository repository;

    private final Random random = new Random();

    public List<Note> listAll() {
        return new ArrayList<>(repository.findAll());
    }

    public Note add(Note note) {
        long id = random.nextLong();
        note.setId(id);
        repository.save(note);
        return note;
    }

    public void deleteById(long id) {
        try {
            repository.deleteById(id);
        } catch (Exception ex) {
            System.err.println("It is not possible to delete a note with this ID");
        }
    }

    public void update(Note note) {
        try {
            repository.save(note);
        } catch (Exception e) {
            System.err.println("It is not possible to update a note with this ID");
        }
    }

    public Note getById(long id) {
        try {
            return repository.getReferenceById(id);
        } catch (Exception e) {
            System.err.println("No such note exists");
        }
        return null;
    }
}
